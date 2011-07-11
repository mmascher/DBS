#!/usr/bin/env python
"""
DBS Migration Service Client Interface Rest Model module
"""

__revision__ = "$Id: DBSMigrateModel.py,v 1.4 2010/07/29 22:01:13 yuyi Exp $"
__version__ = "$Revision: 1.4 $"

import cjson

from cherrypy import request
from WMCore.WebTools.RESTModel import RESTModel
from dbs.utils.dbsUtils import dbsUtils
from dbs.business.DBSMigrate import DBSMigrate

class DBSMigrateModel(RESTModel):
    """
    DBS Migration Service Web Model
    """
    
    def __init__(self, config):
        """
        All parameters are provided through DBSConfig module
        """
        RESTModel.__init__(self, config)
        
        self._addMethod('POST', 'submit', self.submit)
        self._addMethod('POST', 'remove', self.remove)
        self._addMethod('GET',  'status', self.status)
        
        self.dbsMigrate = DBSMigrate(self.logger, self.dbi, config.dbowner)
    
    def submit(self):
        """
        Interface for submitting a migration request
        """
        body = request.body.read()
        indata = cjson.decode(body)
        indata.update({"creation_date": dbsUtils().getTime(),
                "last_modification_date" : dbsUtils().getTime(),
                "create_by" : dbsUtils().getCreateBy() ,
                "last_modified_by" : 0 })
        return self.dbsMigrate.insertMigrationRequest(indata)
    
    def status(self, migrationRequestId="", blockName="", dataset="", 
        user=""):
        """
        Interface to query status of a migration request
        In this preference order of input parameters :-
            migrationRequestId, block, dataset, user
            (if multi parameters are provided, only the precedence order is followed
        """
        return self.dbsMigrate.listMigrationRequests(migrationRequestId,
            blockName, dataset, user)
    
    def remove(self, migrationRequestId=""):
        """
        Interface to remove a migration request from the queue
        Only FAILED, COMPLETED and PENDING requests can be removed
        (running requests cannot be removed)
        """
        return self.dbsMigrate.removeMigrationRequest(migrationRequestId)

