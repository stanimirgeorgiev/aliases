;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
~1=~0,-1  
auth=call "%GIT_INSTALL_ROOT%/cmd/start-ssh-agent.cmd" /k exit && c: && cd "%GIT_INSTALL_ROOT%\usr\bin\" && agent
c=clear  
cdh=C: \\  
ch=git ch $1 && git rhh
cl=clear  
clear=cls
clink="C:\cmder\vendor\clink/clink_x64.exe" --cfgdir "C:\cmder\config" $*
cmderr=cd /d "%CMDER_ROOT%"
dev=npm run smoke-test:dev  
dns=ipconfig /flushdns  
e.=explorer .
g=git $*  
gen=npm run gen:all  
gl=git log --oneline --all --graph --decorate  $*
gnb=echo Checkingout branch: $1 && git ch $1 &&  echo [41mResetting branch: $1 [0m && git rh && git del && echo Pulling from branch: $1 && git pl && echo Creating branch: $2 && git chb $2 && echo [32mSuccess !!![0m
gnm=echo Checkingout branch: master && git ch master &&  echo [41mResetting branch: master[0m && git rh && git del && echo Pulling from branch: master && git pl && echo Creating branch: $1 && git chb $1 && echo [32mSuccess !!![0m
gob=echo You should add 'set LELE=$$$11' before exit line in the cmder\vendor\init.bat && echo Checkingout master && git checkout master &&  echo [41mResetting branch: master[0m && git rh && git del && git fetch --all --prune -q && git pl && echo Branches to be removed: && echo ----------------------- [44m&& git branch -vv | awk "/: gone]/{print %LELE%}" && echo [0m-----------------------
gr=git ll | grep -B 5 -A 5 $1
grb=echo You should add 'set LELE=$$$11' before exit line in the cmder\vendor\init.bat && echo Checkingout master && git checkout master &&  echo [41mResetting branch: master[0m && git rh && git del && git fetch --all --prune -q && git pl && git branch -vv | awk '/: gone]/{print %LELE%}' | xargs git branch -D && git gc
history=cat "%CMDER_ROOT%\config\.history"
i=npm install  
l=npm run lint  
lb=git branch --list | grep -i $1
lbc=git branch --list | grep -i $1 | xargs git ch && git rh && git del
log=C:\Windows\system32\inetsrv\appcmd list traces /text:path  
logg=%windir%\system32\inetsrv\appcmd list trace $1 /text:path
ls=ls --show-control-chars -F --color $*
ma=git ch master    
pa=git cb | xargs -l bash -c "git show-branch --all 2>/c/1 | grep '\*' | grep -vm 1 $0 | sed 's/.*\[\(.*\)\].*/\1/' | sed 's/[\^~].*//'" | xargs
pwd=cd
save=call "%GIT_INSTALL_ROOT%/cmd/start-ssh-agent.cmd" /k exit && c: && cd "%GIT_INSTALL_ROOT%\usr\bin\" && agent && cd %backup_alias% && echo [32mSaving cmder aliases![0m && alias | cat > cmder-aliases.txt &&  cat cmder-aliases.txt && echo [32mSaving git aliases![0m && git config --get-regexp alias | cat > git-aliases.txt && cat git-aliases.txt && echo [32mSuccess !!![0m && cp -f "%home%\.gitconfig" ./ -v && cp -f "%GIT_INSTALL_ROOT%\usr\bin\agent.cmd" ./ -v && cp -f "%CMDER_ROOT%\config\user_aliases.cmd" ./ -v && git add . && git commit -m "%date%" && echo [32mCommited !!![0m  && git push && echo [32mPushed !!![0m && echo && echo exiting in 5s && timeout 5 && exit
t=npm run test  
ui=npm run smoke-test:ui  
unalias=alias /d $1
updategrbcommnad=echo You should add 'set LELE=$$$11' before exit line in the cmder\vendor\init.bat  
vi=vim $*
ww=npm install && npm run gen:all && npm run build:watch  
updatelocal=cp -f .\.gitconfig %home% -v $t cp -f .\agent.cmd "%GIT_INSTALL_ROOT%\usr\bin" -v $t setx backup_alias %cd% $t echo You should add 'set LELE=$$$11' before exit line in the cmder\vendor\init.bat. Create ssh keys and place them in C:\Users\s.georgiev\.ssh in order the save command to work  
gre=git lla $b grep -B 5 -A 5 $1  
ll=git ll $b head -$1  
w=npm install $t npm run build:watch  
lr=ls -R ./ $t awk ' /:$/  
test=npm run test:all  
d=docker $*  
xargs='xargs '  
ld=git rev-parse --abbrev-ref HEAD $b xargs -I '{}' git diff '{}' origin/'{}'  
