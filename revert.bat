@echo off

setlocal

set /P yesOrNo=Are you sure you want to reset to the last commit (Y/N)?
IF %yesOrNo%==Y	OR IF %yesOrNo%==y(
	call git reset --hard
)
endlocal