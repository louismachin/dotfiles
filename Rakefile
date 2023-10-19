task :startup do
    system('screen -AdmS myshell -t tab0 bash')
    system('screen -S myshell -X screen -t "discord bot" ./scripts/start-discord-bot.sh')
end

task :anim do
    system('python3 ./scripts/rainfall.py')
end

task :devnotes do
    system('./scripts/start-nvim-devnotes.sh')
end