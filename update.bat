@echo off

setlocal
echo If you choose to do this and have conflicting files it will prioritize theirs. 
set /P yesOrNo=Are you sure you want to do this(Y/N)?
IF %yesOrNo%==Y	OR IF %yesOrNo%==y(
	call git fetch --all
	call git merge -X theirs
	GOTO:ending	
) ELSE 
	echo update cancelled. If you have any conflicting files be sure to fix them.
)

:ending
endlocal



