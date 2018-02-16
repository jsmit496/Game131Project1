@echo off

setlocal

set /P yesOrNo=Are you sure you want to reset to the last commit (Y/N)?
IF %yesOrNo%==Y	OR (
	call git reset --hard
	GOTO ending
)
IF %yesOrNo%==y (
	call git reset --hard
	GOTO ending
)
IF %yesOrNo%==N (
	echo revert aborted
	GOTO ending
)
IF %yesOrNo%==n (
	echo revert aborted
	GOTO ending
)


:ending
endlocal