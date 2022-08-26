public with sharing class SplitArrayController {
    @AuraEnabled( cacheable = true )
    public static List<String> ShowTable(String str) {
    List<String> listStr = new List<String>();
    try {
        If(str.contains(',')){
            listStr=str.split(',');
            System.debug('listtttt' +listStr);
        }else {
            System.debug('Invalid String');
        }
        }
     catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
        }
         return listStr;
}
}