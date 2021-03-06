#!/usr/bin/env python
""" DAO Object for ProcessedDatasets table """ 

__revision__ = "$Revision: 1.10 $"
__version__  = "$Id: Insert.py,v 1.10 2010/08/20 15:55:57 yuyi Exp $ "

from WMCore.Database.DBFormatter import DBFormatter
from dbs.utils.dbsExceptionHandler import dbsExceptionHandler

class Insert(DBFormatter):
    """ProcessedDataset Insert DAO class"""

    def __init__(self, logger, dbi, owner):
        DBFormatter.__init__(self, logger, dbi)
        self.owner = "%s." % owner if not owner in ("", "__MYSQL__") else ""

        self.sql = \
	"""INSERT INTO %sPROCESSED_DATASETS 
		(PROCESSED_DS_ID, PROCESSED_DS_NAME) 
		VALUES (:processed_ds_id, :processed_ds_name)
	""" % self.owner

    def execute( self, conn, daoinput, transaction=False ):
        """
        daoinput must be validated to have the following keys:
        processeddsid, processeddsname
	"""
        if not conn:
	    dbsExceptionHandler("dbsException-db-conn-failed", "Oracle/ProcessedDataset/Insert. Expects db connection from upper layer.")

	self.dbi.processData(self.sql, daoinput, conn, transaction)
