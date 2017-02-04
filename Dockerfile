FROM mysql:5.6
CMD [ \
    "mysqld", \
    "--user=root", \
    "--verbose", \
    "--skip-sync-frm," \
    "--innodb_flush_log_at_trx_commit=0", \
    "--innodb-support-xa=0", \
    "--bind-address=0.0.0.0", \
    "--query-cache-type=1" \
]
