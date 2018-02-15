@echo off

setlocal

set /P yesOrNo=Are you sure you want to reset to the last commit (Y/N)?
IF %yesOrNo%==Y	(
	call git reset --hard
) ELSE (
	echo revert cancelled
)
endlocal