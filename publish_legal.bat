@echo off
cd /d D:\finonda-waitlist
echo ===== publish start %DATE% %TIME% ===== > publish_legal.log
git add -A >> publish_legal.log 2>&1
git commit -m "Legal: add Terms of Service + multi-jurisdiction Privacy Policy rewrite; grievance officer Rosamma Thomas; breach + IP clauses; household-management framing; footer terms link" >> publish_legal.log 2>&1
echo COMMIT_EXIT=%ERRORLEVEL% >> publish_legal.log
git push >> publish_legal.log 2>&1
echo PUSH_EXIT=%ERRORLEVEL% >> publish_legal.log
echo ===== publish done %DATE% %TIME% ===== >> publish_legal.log
