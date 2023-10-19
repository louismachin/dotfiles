#!/usr/bin/env ruby

for gem in ['colorize', 'uri', 'http', 'net/ping', 'json'] do
    begin
        require gem
    rescue LoadError
        puts "MOTD requires Ruby '#{gem.gsub('/', '-')}' gem!"
        exit
    end
end

class String
    def titleize
        return split(/ |\_|\-/).map(&:capitalize).join(" ") 
    end

    def italics
        return "\e[3m#{self}\e[23m"
    end
end

def get(url, params = {}, headers = {})
    uri = URI(url)
    uri.query = URI.encode_www_form(params) unless params == {}
    req = Net::HTTP::Get.new(uri)
    headers.each { |key, value| req[key] = value }
    res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') { |http|
        http.request(req)
    }
    return res
end

def get_horoscope
    date = Date.today
    key_path = File.dirname(__FILE__) + '/costar_api_key'
    return 'Could not get horoscope...' unless File.exists?(key_path)
    bearer_token = File.read(key_path).chomp
    headers = { Authorization: bearer_token }
    res = get("https://api.costarastrology.com/user/current/timeline/v1/daily/#{date.strftime("%Y-%m-%d")}T00:00:00Z", {}, headers)
    return JSON.parse(res.body)['today']['pushNotificationText']
end

def get_weather(q)
    key_path = File.dirname(__FILE__) + '/weather_api_key'
    url = 'https://api.openweathermap.org/data/2.5/weather'
    # Return if no API key found
    return Array.new(3) unless File.exists?(key_path)
    # Get relevant data with API key
    appid = File.read(key_path).chomp
    res = get(url, { appid: appid, q: q, units: 'metric' })
    data = JSON.parse(res.body)
    # Return if no API data received
    return Array.new(3) if data == {}
    # Return weather data
    weather = data["weather"].first["main"].titleize
    description = data["weather"].first["description"].gsub('shower rain', 'rain').titleize
    temperature = data["main"]["temp"].round.to_s + '°'
    feels_like = data["main"]["feels_like"].round.to_s + '°'
    wind_speed = data["wind"]["speed"].round(2).to_s + 'kmph'
    time = Time.at(data["dt"]).to_datetime.strftime('%H:%M %p')
    thumb, color = case weather
        when 'Thunderstorm', 'Drizzle', 'Rain'
            [["' '' ' '", "'' ' ' '", "' ' '' '"], :light_blue]
        when 'Snow'
            [["* '* ' *", "'* ' * '", "*' * ' *"], :white]
        when 'Clouds'
            [["  .   * ", "*    . O", ". . *  ."], :dark_white]
        else
            [["  .   * ", "*    . O", ". . *  ."], :light_magenta]
    end
    return [
        [thumb[0].ljust(10, ' '), description.ljust(20, ' '), q.titleize].join.colorize(color),
        [thumb[1].ljust(10, ' '), temperature.ljust(20, ' '), "feels like #{feels_like}"].join.colorize(color),
        [thumb[2].ljust(10, ' '), time.ljust(20, ' '), "wind speed #{wind_speed}"].join.colorize(color),
    ]
end

weathers = ['southampton', 'bordeaux'].map { |q| get_weather(q) }.flatten

print "\n"
print "  Welcome back...\n".italics
print "\n"
print weathers.map.with_index { |line, i| '     ' + line + (i % 3 == 2 ? "\n" : "") }.join("\n") unless weathers.first == nil
print "\n"
print "  " + get_horoscope.italics + "\n"
print "\n"