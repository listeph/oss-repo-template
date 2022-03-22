# Lab 07 Report - Testing and Continuous Integration

### Checkpoint 1: Getting Started
Build complete message: 
![](/labs/lab-07/images/check1-build-complete.png)
![](/labs/lab-07/images/check1-build-complete-pt2.png)

### Checkpoint 2: Executing the Tests
<u>Find the Nightly and Experimental sections and look at some of the submissions. How can you see what tests were run for a particular submission?</u>
- Under the "Test" column, you can visit the hyperlink values for each submission under the "Fail" and "Pass" subcolumns. When you click on the link, it goes to a page with a table of failed and passed tests, where you can click on the name of a test for more details.

<u>Find a submission with errors. Can you see what the error condition was? How does this help you debug the failure?</u>
- An example submission with errors is [Linux-Gentoo-Sparc32-gcc12](https://open.cdash.org/viewTest.php?onlyfailed&buildid=7801172). The test status was that it completed but failed in 320ms, where the fail reason was specified as "Required regular expression not found. Regex=[file already exists with expected MD5 sum]". This helps me debug the failure because then I can Google for people facing similar failures, or try deleting the contents of the build folder and running again so that the duplicate file no longer exists.

<u>Find a system that is close to your specific configuration in the Nightly, Nightly Expected or one of the Masters sections. How clean is the dashboard? Are there any errors that you need to be concerned with?</u>
- I found a run from 14 hours ago on [MacOS 10.14 by RogueResearch21](https://open.cdash.org/build/7801261) that is similar to my system. I am using MacOS 10.15. The dashboard for that specific run is clean with 0 failures and 603 passing tests. ![](/labs/lab-07/images/check2-cmake-dashboard.png)

The results of successfully running the `ctest` tests from my terminal are here. My submission was not able to be successfully submitted to the dashboard as shown in the last screenshot.
![](/labs/lab-07/images/check2-ctest-result.png)
![](/labs/lab-07/images/check2-ctest-coverage.png)
![](/labs/lab-07/images/check2-ctest-submission-fail.png)

### Checkpoint 3: Failing / Passing a Test
Failed test #16 as a result of running with new `Copyright.txt` content:
![](/labs/lab-07/images/check3-failed-ctest.png)
![](/labs/lab-07/images/check3-failed-ctest-output.png) \
The test failure provides information that the specified copyright year does not match the current year 2022. This is my error fix in `Copyright.txt` and the resulting successful tests:
![](/labs/lab-07/images/check3-copyright-fix.png)
![](/labs/lab-07/images/check3-ctest-success.png)

### Checkpoint 4: CI/CD
Here is a link to my [Github repository with the CMake Tutorial Step 5 source code](https://github.com/listeph/cmake-tutorial-step-5):
![](/labs/lab-07/images/check4-cmake-repo.png)
This is the resulting CMake Github Actions configured to run on open PR's as well as on commits to main:
![](/labs/lab-07/images/check4-PR-execution.png)
![](/labs/lab-07/images/check4-push-execution.png)