@echo off

setlocal
echo If you choose to do this and have conflicting files it will prioritize theirs. 
set /P yesOrNo=Are you sure you want to do this(Y/N)?
IF %yesOrNo%==Y	(
	call git fetch --all
	call git merge -X theirs
	GOTO ending	
)
IF %yesOrNo%==y	(
	call git fetch --all
	call git merge -X theirs
	GOTO ending	
)
IF %yesOrNo%==N (
	echo update aborted
	GOTO ending	
)
IF %yesOrNo%==n (
	echo update aborted
	GOTO ending	
)
 ELSE 
	echo update cancelled. If you have any conflicting files be sure to fix them.
)

:ending
endlocal



