
/////////////////////////////////////////////////////////
//                                                     //
//              Bold for Delphi                        //
//    Copyright (c) 1996-2002 Boldsoft AB              //
//              (c) 2002-2005 Borland Software Corp    //
//                                                     //
/////////////////////////////////////////////////////////

{ Global compiler directives }
{$include bold.inc}
unit ADOConsts;

interface

resourcestring

  sAdapterNotConnected = '%s.GetDatabaseInterface: The adapter is not connected to an ADO connection';
  sCreatedNewAdapter = 'Created a new DatabaseAdapterADO';
  sCanOnlyTransferToADOAdapter = 'The persistencehandle is connected to a %s, properties can only be transfered to a TBoldDatabaseAdapterADO';
  sCreatedNewDB = 'Created a new ADODatabase';
  sCouldNotTransferConnectionString = 'Connection string settings could not be transferred to the new ADO connection: ';
  sTransferManually = 'Please transfer these manually!';



implementation

end.