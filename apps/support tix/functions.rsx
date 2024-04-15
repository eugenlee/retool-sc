<GlobalFunctions>
  <JavascriptQuery
    id="arrayOfObjects"
    query={include("./lib/arrayOfObjects.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  />
  <JavascriptQuery
    id="objectOfArrays"
    enableTransformer={true}
    query={include("./lib/objectOfArrays.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return formatDataAsObject(data)"
  />
  <SqlQueryUnified
    id="getFromRetoolDatabase"
    query={include("./lib/getFromRetoolDatabase.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="20c2108a-dc44-47b8-8478-4e65e657342d"
    resourceTypeOverride=""
    warningCodes={[]}
  />
  <FirebaseQuery
    id="getFire"
    actionType="queryFirestore"
    firebaseService="firestore"
    firestoreCollection="test"
    query={include("./lib/getFire.query", "string")}
    resourceDisplayName="Eugene DB"
    resourceName="8521a931-4c64-496b-977c-3857a3f3ba60"
    resourceTypeOverride=""
    transformer="return typeof(data[0].next_renewal)"
    useRawCollectionId={true}
  />
  <FirebaseQuery
    id="insertFire"
    actionType="setFirestore"
    firebaseService="firestore"
    firestoreCollection="customers"
    notificationDuration={4.5}
    query={include("./lib/insertFire.query", "string")}
    resourceDisplayName="Eugene DB"
    resourceName="8521a931-4c64-496b-977c-3857a3f3ba60"
    resourceTypeOverride=""
    showSuccessToaster={false}
    value={'{ "next_renewal": {{moment()}} }'}
  />
  <State id="variable1s" />
  <JavascriptQuery
    id="dynamicInsert"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/dynamicInsert.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <connectResource id="query7" _componentId={null} />
  <FirebaseQuery
    id="insertNewCustomer"
    actionType="setFirestore"
    firebaseService="firestore"
    firestoreCollection="wee"
    isMultiplayerEdited={false}
    resourceDisplayName="Eugene DB"
    resourceName="8521a931-4c64-496b-977c-3857a3f3ba60"
    value={
      '{ "name": "sdfdsf", "date": {{ new Date(\'December 10, 1815\') }} }'
    }
  />
  <RetoolAIQuery
    id="chat1_query1"
    action="chatResponseGeneration"
    chatHistory="{{ chat1.messageHistory }}"
    chatInput="{{ chat1.lastMessage }}"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
  />
  <FirebaseQuery
    id="getMyFirestore"
    actionType="queryFirestore"
    enableTransformer={true}
    firebaseService="firestore"
    firestoreCollection="customers"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="Eugene DB"
    resourceName="8521a931-4c64-496b-977c-3857a3f3ba60"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
const data2 = data.map(x => {
  x.next_renewal = moment(x.next_renewal);
  return x;
});
console.log(data2);

return data2;"
  />
  <SqlQueryUnified
    id="updateQuery"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"id","value":"{{ form1.data.id }}"},{"key":"account_number","value":"{{ form1.data.account_number }}"},{"key":"company","value":"{{ form1.data.company }}"},{"key":"transaction_date","value":"{{ form1.data.transaction_date }}"},{"key":"payment_type","value":"{{ form1.data.payment_type }}"},{"key":"plan","value":"{{ form1.data.plan }}"}]'
    }
    editorMode="gui"
    filterBy={'[{"key":"id","value":"{{ form1.data.id }}","operation":"="}]'}
    resourceDisplayName="retool_db"
    resourceName="20c2108a-dc44-47b8-8478-4e65e657342d"
    runWhenModelUpdates={false}
    tableName="sample_transactions"
  />
  <SqlQueryUnified
    id="transformListview"
    enableTransformer={true}
    query={include("./lib/transformListview.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="20c2108a-dc44-47b8-8478-4e65e657342d"
    transformer="// Query results are available as the `data` variable
return data.account_number;

"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="updateRepeatableQuery"
    actionType="BULK_UPDATE_BY_KEY"
    editorMode="gui"
    filterBy="[]"
    records="{{ listView1.data }}"
    resourceDisplayName="retool_db"
    resourceName="20c2108a-dc44-47b8-8478-4e65e657342d"
    runWhenModelUpdates={false}
    tableName="sample_transactions"
  />
  <connectResource id="query14" _componentId="listView1" />
</GlobalFunctions>
