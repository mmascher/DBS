#!/usr/bin/env python
"""
This module provides PrimaryDSType.List data access object.
"""
from WMCore.Database.DBFormatter import DBFormatter
from dbs.utils.dbsExceptionHandler import dbsExceptionHandler

class List(DBFormatter):
    """
    PrimaryDSType List DAO class.
    """
    def __init__(self, logger, dbi, owner):
        """
        Add schema owner and sql.
        """
        DBFormatter.__init__(self, logger, dbi)
        self.owner = "%s." % owner if not owner in ("", "__MYSQL__") else ""
        self.sql = \
"""
SELECT S.SITE_ID, S.SITE_NAME
FROM %sSITES S 
""" % (self.owner)

    def execute(self, conn, site_name= "", transaction = False):
        """
        Lists all sites types if site_name is not provided.
        """
	if not conn:
	    dbsExceptionHandler("dbsException-db-conn-failed", "Oracle/Site/List. Expects db connection from upper layer.")

        sql = self.sql
        if site_name == "":
            result = self.dbi.processData(sql, conn=conn, transaction=transaction)
        else:
            sql += "WHERE S.SITE_NAME = :site_name" 
            binds = { "site_name" : site_name }
            result = self.dbi.processData(sql, binds, conn, transaction)
        return self.formatDict(result)
