# MySQL Development-Tuned Docker Image

This Dockerfile produces a tweaked MySQL server based on the canonical image from Dockerhub.
The consist of:

- Turn off fsync's for transaction commits (speeds up writes)
- Turn off writing to binlogs at transaction commits (speeds up writes)
- Turn off fsync's for DDL changes (speeds up migrations)
- Turn on the query cache (speeds up selects)
- Bind on 0.0.0.0 so port fowarding for GUI works right

None of these should be an issue in a single-server, low volume development environment. 
Never run these settings where the data is important.
