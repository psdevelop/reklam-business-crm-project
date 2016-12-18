
/////////////////////////////////////////////////////////
//                                                     //
//              Bold for Delphi                        //
//    Copyright (c) 2004 BoldSoft AB, Sweden           //
//                                                     //
/////////////////////////////////////////////////////////

{ Global compiler directives }
//{$include bold.inc}
unit BoldGuiResourceStrings2;

interface

resourcestring
  SCantGetIntegerValue = 'Can''t get integer value from element (%s)';
  SCantSetIntegerValue = 'Can''t set integer value om element (%s)';
  SBoldInvalidName =  '''%s'' is not a valid name';

  SBoldInactiveFollowerNoRenderData = 'Inactive Follower has no renderer data';

  SRepresentationDefault = 'Default';
  SRepresentationShort = 'Short';
  SRepresentationLong = 'Long';

  SCannotDragOverMultipleObjects = 'Can''t DragOver multiple objects';
  SLinkAlreadyAssigned = 'Link already assigned';
  SCannotChangeStateWithModifiedValue = 'Can''t Change State with Modified Value';

  SValueReadOnly = 'Can''t change value. Value is read only';
  sStateNotModifiable = '%s.State: Not modifiable';
  sHandleMustBeReferenceHandle = 'The BoldHandle property must be a TBoldReferenceHandle when BoldSelectChangeAction is bdscSetReference';
  sChangeActionCannotBeSetReference = 'The BoldSelectChangeAction property can not be bdscSetReference when BoldHandle is not a TBoldReferenceHandle';
  sNoRecordsFound = 'No records found!';
  sCannotInitializeFieldsWithoutContext = 'Cannot initialize fields - dataset %s has no context';
  sInvalidFieldExpression = 'Invalid field expression %s';
  sInvalidFieldName = 'Invalid fieldname %s';
  sTextNotModifiable = '%s.Text: Not modifiable';
  sCannotCreateColumnOutsideCollection = '%s.Create: Cannot create TBoldGridColumn outside a TBoldGridColumns';
  sCaptionClassName = 'Class name';
  sCaptionType = 'Type';
  sCaptionAsString = 'AsString';
  sClosePopup = '&Close Popup';
  sNewColumn = '<new column>';
  sExecuteGridNotAssigned = '%s.Execute: BoldCustomGrid not assigned';
  sUnknownFileFormat = '%s.LoadFromFile: File format unknown: File: ''%s''';
  sBitMapImage = 'Bitmap image';
  sJpegImage = 'JPEG image';
  SNavHintFirst = 'First';
  SNavHintPrior = 'Prior';
  SNavHintNext = 'Next';
  SNavHintLast = 'Last';
  SNavHintNew = 'New';
  SNavHintDelete = 'Delete';
  SNavHintMoveUp = 'Move up';
  SNavHintMoveDown = 'Move down';
  sUnknownDeleteMode = '%s.MapMinus: Unknown delete mode';
  sDeleteQuestion = 'Delete "%1:s"?';
  sUnlinkQuestion = 'Unlink "%1:s" from "%2:s"?';
  sRemoveQuestion = 'Remove "%1:s" from the list?';
  sCannotSetIntegerProperty = 'Could not set the integer %s property to value %s. (%s)';
  sCannotSetProperty = 'Could not set the %s property to value %s. (%s)';
  sStringsControlledByOtherMeans = 'Strings property controlled by "%s" changed by other means';
  sCannotSetValue = '%s: Can''t set value';
  sClassHasNoSubfollowers = '%s: This class has no subfollowers';
  sNotImplemented = '%s.%s not implemented';
  sCannotModifyValue = '%s.DefaultHoldsChangedValue: Can''t Modify Value';
  sReplaceNotImplemented = '%s.DefaultDragDrop: Replace not implemented yet';
  sUnknownRequestedEvent = '%s.Receive: Unknown RequestedEvent (%d)';
  sFollowerStateError = '%s.%s: Follower state error';
  sCannotDisplayInThisOrder = '%s.Display: Can not display because there is an owning follower that must be displayed before';
  sDisplayError = '%s%soccured when displaying component %s';
  sControllerNotAssigned = '%s.GetAssertedController: Controller not assigned';
  sCannotGetDateTimeValueFromElement = 'Can''t get datetime value from element (%s)';
  sCannotSetDateTimeValueOnElement = 'Can''t set datetime value on element (%s)';
  sCannotGetFloatValueFromElement = 'Can''t get float value from element (%s)';
  sCannotSetFloatValueOnElement = 'Can''t set float value on element (%s)';
  sCouldNotGetController = '%s%soccured when getting controller for component %s';
  sDraggedObjectsNotCleared = '%s.DefaultStartDrag: TBoldGUIHandler.DraggedObjects not cleared';
  sCannotSetStringValue = '%s.DefaultSetAsString: Can''t set string value';
  sInvalidNodeName = '%s.SetDefaultNodeDescriptionName: ''%s'' is not a valid name';
  sStringValidationFailedExtended = 'String validation failed for %s: %2:s';
  sStringValidationFailed = 'String validation failed';
  sUnknownReason = 'Unknown reason';
  sViewerNotAvailable = 'Viewer not available (%s)';
  sComponentNotComboBox = '%s.GetContextType: Incoming component is not a BoldComboBox';
  sInvalidPropertyValue = 'Invalid property value';
  sEditNodeDescriptions = '&Edit Node Descriptions...';
  sEditDrivenProperties = 'Edit driven properties...';
  sEditColumns = '&Edit Columns';
  sCreateDefaultColumns = 'Create Default Columns';
  sClearAllColumns = 'Clear all Columns';
  sFieldsEditor = 'Fields Editor...';
  sCreateDefaultFields = 'Create default fields';
  sClearAllFields = 'Clear all fields';
  sClearLinkFirst = 'Clear the link first';
  sCreatingNewNotSupported = 'Creating new objects like this only supported for relations to non-subclassed classes';
  sAreYouSureToDelete = 'Are you sure you want to delete this object??';
  sAreYouSureToUnlink = 'Are you sure you want to unlink this object??';
  sNavigate = 'Перейти...'; // 'Navigate';
  sCreateNew = 'Создать новый...'; // 'Create new...';
  sAddExisting = 'Добавить...'; // 'Add existing...';
  sUnlink = 'Удалить ссылку'; // 'Unlink';
  sDelete = 'Удалить'; // 'Delete';
  sHistoricObject = 'Historic object - Timestamp %d';
  sClose = 'Закрыть'; // 'Close'; 
  sApply = 'Применить'; // '&Apply';
  sCancel = 'Отменить'; // '&Cancel';
  sOK = '&OK';
  sIllegalApplyPolicy = 'Illegal applypolicy';
  sIncludeChangesInNonEmbeddedLinks = 'Include changes in non embedded links';
  sObjectNotVersioned = '  This object is not versioned, no history can be shown';
  sToDisableTab_1 = '  To disable this tab, set the variable ';
  sToDisableTab_2 = '  "BoldShowHistoryTabInAutoForms" to false';

implementation

end.