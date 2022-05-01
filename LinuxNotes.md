# Linux Commands and Tips

__Fish Shell__

- Modify shell greeting

    - Requires fortune-mod package from Fedora repo
    
          $ sudo dnf install -y fortune-mod
      
          $ function fish_greeting
                  fortune
            end
        
          $ funcsave fish_greeting #close and open new shell

__Changing Shells__

Fedora util-linux-user
    
      $ chsh -s /usr/bin/fish # or /bin/fish depending on distribution
      
      $ chsh -s /usr/bin/zsh
      
      $ chsh -s /usr/bin/bash 

__Using youtube-dl__

    Download a single video and format it to mp4(Command is for bash only):
    
    Do __not__ include <> 
    
      $ youtube-dl -f mp4 <youtubelink.com>
      
    Download a playlist
    
      $ youtube-dl --yes-playlist -f mp4 <link of playlist>
      
    Download a playlist starting and ending at specified location
    
      $ youtube-dl --yes-playlist -f mp4 --playlist-start <Enter number>  --playlist-end <enter number> <link>
   
    Download and convert to audio
    
      $ youtube-dl --extract-audio --audio-format mp3 <link>
      
## VS Code Notes      
      
If using VS Code to debug please refer to the following:

[Using C++ on LInux in VS Code](https://code.visualstudio.com/docs/cpp/config-linux)

[Using C++ on Windows in VS Code](https://code.visualstudio.com/docs/cpp/config-mingw)

[Using C++ on Windows WSL in VS Code](https://code.visualstudio.com/docs/cpp/config-wsl)

[CLang on Mac OS in VS Code](https://code.visualstudio.com/docs/cpp/config-clang-mac)