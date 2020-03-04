#https://vpaas.kaltura.com/documentation/Deliver-and-Distribute-Media/how-retrieve-download-or-streaming-url-using-api-calls.html

#Client library configuration and instantiation...
 
#when creating the Kaltura Session it is important to specify that this KS should bypass entitlemets restrictions:
$ks = $client->session->start($secret, $userId, KalturaSessionType::ADMIN, $partnerId, 86400, 'disableentitlement');
$client->setKs($ks);
 
$client->startMultiRequest();
$entryId = '1_u7aj9kasw'; //replace this with your entry Id
$client->flavorAsset->getwebplayablebyentryid($entryId);
$req1ResultFlavorId = '{1:result:0:id}'; //get the first flavor from the result of getwebplayablebyentryid
$client->flavorAsset->geturl($req1ResultFlavorId); //this action will return a valid download URL
$multiRequestResults = $client->doMultiRequest();
$downloadUrl = $multiRequestResults[1];
echo 'The entry download URL is: '.$downloadUrl;
