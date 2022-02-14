# Lab 05 Report - Build Systems

### Step 1: A Basic Starting Point
Code links:
- resulting [`tutorial.cxx`](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step1/source/tutorial.cxx)
- resulting [`CMakeLists.txt`](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step1/source/CMakeLists.txt)
- [all modified source code for step 1](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step1/source)
- [resulting build files created](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step1/build)

Running `./Tutorial` before modifications:
- ![](/labs/lab-05/images/step1-tutorial-before.png)

Running `./Tutorial` after modifications:
- ![](/labs/lab-05/images/step1-tutorial-after.png)

### Step 2: Adding a Library
Code links:
- resulting [`tutorial.cxx`](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step2/source/tutorial.cxx)
- resulting [`CMakeLists.txt`](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step2/source/CMakeLists.txt)
- [all modified source code for step 2](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step2/source)
- [resulting build files created](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step2/build)

Running `./Tutorial` results with the custom sqrt function:
- ![](/labs/lab-05/images/step2-custom-sqrt.png)

Exercise Questions:
- It's important that we configure `TutorialConfig.h.in` after the option for `USE_MYMATH` because otherwise when the `#cmakedefine USE_MYMATH` line in `TutorialConfig.h.in` is run, `USE_MYMATH` would not yet have been defined.
- `sqrt` gives more accurate results than `mysqrt`, which becomes apparent as we run `Tutorial` on the larger number 4294967296.

### Step 3: Adding Usage Requirements for a Library
Code links:
- resulting [`CMakeLists.txt`](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step3/source/CMakeLists.txt)
- resulting [`MathFunctions/CMakeLists.txt`](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step3/source/MathFunctions/CMakeLists.txt)
- [all modified source code for step 3](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step3/source)
- [resulting build files created](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step3/build)

Running `./Tutorial` results remain the same after the change to usage requirements:
- ![](/labs/lab-05/images/step2-custom-sqrt.png)

### Step 4: Installing and Testing
Code links:
- resulting [`CMakeLists.txt`](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step4/source/CMakeLists.txt)
- resulting [`MathFunctions/CMakeLists.txt`](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step4/source/MathFunctions/CMakeLists.txt)
- [all modified source code for step 4](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step4/source)
- [resulting build files created](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step4/build)
- [install files created from `cmake --install`](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step4/install)

`ctest -VV` output results:
- ![](/labs/lab-05/images/step4-ctest-pt1.png)
- ![](/labs/lab-05/images/step4-ctest-pt2.png)
- ![](/labs/lab-05/images/step4-ctest-pt3.png)

### Step 5: Adding System Introspection
Code links:
- resulting [`CMakeLists.txt`](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step5/source/CMakeLists.txt)
- resulting [`MathFunctions/CMakeLists.txt`](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step5/source/MathFunctions/CMakeLists.txt)
- [all modified source code for step 4](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step5/source)
- [resulting build files created](https://github.com/listeph/oss-repo-template/tree/master/labs/lab-05/cmake-step5/build)

Running `./Tutorial` using the updated mysqrt:
- ![](/labs/lab-05/images/step5-tutorial.png)

Exercise Questions:
- Now that we are using the built-in log and exp utilities, `mysqrt` gives results with accuracy on par with `sqrt` even when we run `Tutorial` on the larger number 4294967296.