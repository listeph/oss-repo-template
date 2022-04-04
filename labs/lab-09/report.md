# Lab 09 Report - Databases

## 0. Project Updates
Link to my blog entry discussing MongoDB's license change: https://github.com/listeph/oss-repo-template/wiki/Weekly-Blogs#lab-9-checkpoint-0-entry-41

## 1. Install CouchDB
![](/labs/lab-09/images/check1-couchdb-install.png)

## 2. Quick Tour

### 2.1 CouchDB Raw API
Issuing a GET req to newly installed CouchDB instance: \
![](/labs/lab-09/images/check2-get-req.png) \
Issuing a GET req for a list of all databases: \
![](/labs/lab-09/images/check2-get-all-dbs.png) \
Creating and deleting user databases: \
![](/labs/lab-09/images/check2-create-delete-dbs.png)

### 2.2 Welcome to Fauxton
Fauxton CouchDB Installation Verification: \
![](/labs/lab-09/images/check2-verify-install.png) \
Creating database and its document from Fauxton UI:
![](/labs/lab-09/images/check2-fauxton-create-db.png)

### 2.2 Running a Mango Query
The results of running the tutorial's Mango Queries on CouchDB: \
![](/labs/lab-09/images/check2-mango-query-pt1.png) \
![](/labs/lab-09/images/check2-mango-query-pt2.png)

### 2.3 Triggering Replication
Triggering replication of `hello-world` into `hello-replication` on CouchDB: \
![](/labs/lab-09/images/check2-replication-pt1.png) \
After replication, the two databases have the same size and number of documents in the Database tab: \
![](/labs/lab-09/images/check2-replication-pt2.png)

## 3. API Tutorial

### 3.1 Server
Sanity check HTTP request to see if CouchDB is running: \
![](/labs/lab-09/images/check3-get-req.png)

### 3.2 Databases
Creating a database on CouchDB to store music albums using verbose curl: \
![](/labs/lab-09/images/check3-create-dbs.png)

### 3.3 Documents
Putting and getting a document with a UUID: \
![](/labs/lab-09/images/check3-put-document.png) \
Updating a document using it's revision number: \
![](/labs/lab-09/images/check3-rev-document.png) \
Creating new documents (verbosely) in the `album` database with a fresh UUID: \
![](/labs/lab-09/images/check3-put-document-verbose.png) \
Adding attachments to documents: \
![](/labs/lab-09/images/check3-attachment.png)
![](/labs/lab-09/images/check3-get-req-after-attachment.png)

### 3.4 Replication
Local replication of the `album` database to `album-replica`: \
![](/labs/lab-09/images/check3-replication-1.png) \
![](/labs/lab-09/images/check3-replication-2.png)

## 4. What Did We Miss?
Selecting / querying documents with year greater than 1987 from `hello-world` database using Curl: \
![](/labs/lab-09/images/check4-query.png) \
Curl query for finding movies whose titles come after "L" in alphabetic order (with no matching index warning): \
![](/labs/lab-09/images/check4-query-2.png) \
Curl command for creating the `title` query index / B-tree in `hello-world`: \
![](/labs/lab-09/images/check4-index.png) \
Re-running the query for finding movies whose titles are alphabetically larger than "L": \
![](/labs/lab-09/images/check4-index-2.png)