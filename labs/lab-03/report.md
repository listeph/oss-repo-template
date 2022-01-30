# Lab 03 Report - Documentation and Community

## Part 1: Documentation

### Wiki Project Idea

Repo Wiki Link: https://github.com/listeph/oss-repo-template/wiki/Project-Idea
   

    I'd like to evaluate Submitty as my open source project. I have already contributed to the project in previous semesters for RCOS, so this will give me more time to focus on feature development or code refactoring rather than on onboarding / setting up my development environment. I also like that it means I'm working on a product that I myself am using daily, so I can think both like a developer and a user!

    This semester, my plan is to work on improving CSV uploads for course management in the instructor UI. The CSV uploads are useful for the updating of course lists using the registrar's data, rather than doing so manually. This issue was inspired because the registrar's cron-scheduled autofeed broke last semester. Professor Cutler (Submitty's project manager) had also proposed adding the ability for instructors to download a snapshot of their course classlist into a CSV form for recordkeeping, as well as adding more columns (such as ability to specify rotating sections) in a classlist CSV upload. This introduces more columns to an already large CSV, so I would also like to work on allowing optional column headers on these uploads. To implement this feature, I will be using Submitty's tech stack which is HTML and Javascript in the frontend, and PHP and SQL in the backend.

    An existing example of an overcrowded CSV upload due to a lack of columns headers would be Webex's batch attendees invite feature. Some columns such as company or address don't need to be filled in, yet they must be included in the uploaded CSV. Having column headers that allow for optional columns would be a more intuitive and clean UI. There is also a loosely-correlated existing functionality within Submitty that allows for bulk upload of exam pdf's. Although the uploaded data is in a different category and not in CSV format, this is relevant to the bulk upload of users to a course because it still takes the uploaded data to modify what's stored database.


### Latex
- ```$\sqrt{1 + 2 \sqrt{1 + 3 \sqrt{1 + 4 \sqrt{1 + \cdots}}}}$``` becomes $\sqrt{1 + 2 \sqrt{1 + 3 \sqrt{1 + 4 \sqrt{1 + \cdots}}}}$
- ```$\sqrt{2}^{\sqrt{2}^{\sqrt{2}^{\sqrt{2} \cdots}}}$``` becomes $\sqrt{2}^{\sqrt{2}^{\sqrt{2}^{\sqrt{2} \cdots}}}$
- Hadamard matrix of size 4: \
    ![](/labs/lab-03/images/Hadamard-matrix.png)


## Part 2: Community (Group 6)

### AutoCalendar
- Number of Contributors: 1
- Number of Lines of Code : 12281
- First commit - Jan 21st 2019 commit e5a518479152d80b740139f449184ae0a3834c65
- Last commit - May 15th 2019 commit 088d96c0b5047634e090c1ed536c76d165690607
- Number of Branches: 1
- Git stats: \
    ![](/labs/lab-03/images/gitstats-autocalendar.png)

### AutoLogin
- Contributors: 1
- Number of lines: 613
- First Commit: Mon Feb 15 14:46:00 2016
 7cc7a66a7546b06484a5c927d511ae4096da8d98
- Last Commit: Fri May 6 12:09:59 2016 d69768279382d989eda8f4f7adf9303484afebee
- Branches: 1 (master)
- Git Stats: \
    ![](/labs/lab-03/images/gitstats-autologin.png) \
    ![](/labs/lab-03/images/gitstats-autologin-2.png)
- Streaming Contribution Visualizations: https://www.youtube.com/watch?v=NH78f21MhcY

### AutoPR
- Contributors: 1 (duplicate author exists)
- Lines: 276 (not incl. binary files (pdf/pptx))
- First Commit:
    ```
    commit fea06f9842083648a6b047e1fa1001da05d5d228
    Author: AlexanderFrancoletti <alexander.francoletti@gmail.com>
    Date:   Fri Feb 7 11:14:40 2020 -0500

        Initial commit
    ```
- Latest Commit:
    ```
    commit 0aa25486b6f532102c460593a8ddf1e0104c0bf9 (HEAD -> master, origin/master, origin/HEAD)
    Author: AlexanderFrancoletti <alexander.francoletti@gmail.com>
    Date:   Wed Mar 17 15:55:44 2021 -0400

        There are uncommitted changes/pushes here?
    ```
- Branches: 1 (master)
- Git stats: \
    ![](/labs/lab-03/images/gitstats-autopr.png)
- Streaming Contribution Visualizations: [Full Gource MP4](https://github.com/vandek5/oss-repo-template/blob/master/labs/lab-03/gource.mp4)


### B7 (https://github.com/Tiecoon/B7)
- Number of contributors: 10
- Number of lines of code: 3861 total
- The first commit: [ca0926dcb6988f8e2f464510a9e6d547a9cb2848](https://github.com/Tiecoon/B7/commit/f221dbed816f299d6218b20e564251ad7b8eeee2)
- The latest commit: [f221dbed816f299d6218b20e564251ad7b8eeee2](https://github.com/Tiecoon/B7/commit/ca0926dcb6988f8e2f464510a9e6d547a9cb2848)
- Current branches: 48 branches where the 10 most recently updated ones are master, update-dynamorio, debug, limit-scope, generators, testing-ci, refactor-input, clippy-fixs, Logs, update-test-bins
- Git stats: \
    ![](/labs/lab-03/images/gitstats-B7.png) \
    These findings show more contributors than listed on Github, and a few more lines of code. Maybe this has to do with a difference in counting whitespace, or counts overflowing lines as 2 or 1 lines.
- Streaming Contribution Visualizations: https://youtu.be/AsqMs-VzfyQ \
    It was very interesting to visualize the timeline of the B7 project's growth and individual contributions through the Gource video.

### B.O.T.
- Contributors: 3
- Lines of Code: 187608
- The First Commit: 1/24/20 596a96e136c6552e58f04e5c1dd625e304b89c93
- The Last Commit: 5/2/20 1f35a7a7f6ba5221792e619ca85fc8f25e0b8381
- Branches: the 6 branches are master, dependabot/npm_and_yarn/ini-1.3.8, dependabot/npm_and_yarn/lodash-4.17.21, dependabot/npm_and_yarn/normalize-url-4.5.1, dependabot/npm_and_yarn/path-parse-1.0.7, dependabot/npm_and_yarn/electron-11.5.0
- Git stats: \
    ![](/labs/lab-03/images/gitstats-bot.png)