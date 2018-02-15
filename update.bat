@echo off

setlocal
echo If you choose to do this and have conflicting files it will prioritize theirs. 
set /P yesOrNo=Are you sure you want to do this(Y/N)?
IF %yesOrNo%==Y	OR IF %yesOrNo%==y(
	call git fetch --all
	call git merge -X theirs
)
endlocal



