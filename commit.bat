@echo off

set commitMessage=%1

call git add -A
call git commit -m %1

setlocal

set /P yesOrNo=Would you like to try and push (Y/[N])?
IF %yesOrNo%==Y (
	call git push
	GOTO ending
) 
IF %yesOrNo%==N OR IF %yesOrNo%==n (
	echo changes were left commited but not pushed.
)

:ending
endlocal


