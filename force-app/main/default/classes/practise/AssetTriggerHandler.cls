public class AssetTriggerHandler {
    public static void updateDescription(list<asset> assetTriggerNew, list<asset> assetTriggerOld, map<id, asset> assetTriggerNewMap, map<id, asset> assetTriggerOldMap) {
        
        for (asset eachAsset : assetTriggerNew) { 
           boolean updateDesc = false;
           if (eachAsset.status == 'Shipped' || eachAsset.status == 'Installed') {
                if (assetTriggerOldMap == null) {
                    updateDesc = true;
                }
                if (assetTriggerOldMap != null && assetTriggerOldMap.get(eachAsset.id).status != assetTriggerNewMap.get(eachAsset.id).status) {
                    updateDesc = true;
                }
            }    
            if (updateDesc) {
                if (eachAsset.status == 'Shipped') {
                    eachAsset.Description = 'Asset is shipped';
                } else if (eachAsset.status == 'Installed') {
                    eachAsset.Description = 'Asset is installed';
                } else {
                    eachAsset.Description = '';
                }
            }         
        }
    }
}    