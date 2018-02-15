@echo off

setlocal
echo If you choose to do this and have conflicting files it will prioritize theirs. 
set /P yesOrNo=Are you sure you want to do this(Y/N)?
IF %yesOrNo%==Y	(
	call git feth --all
	call git merge -X theirs
) ELSE (
	echo update cancelled. If you have any conflicting files be sure to fix them.
)
endlocal



