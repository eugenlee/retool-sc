<GlobalFunctions>
  <RetoolAIQuery
    id="chat1_query1"
    action="chatResponseGeneration"
    chatHistory="{{ chat1.messageHistory }}"
    chatInput="{{ chat1.lastMessage }}"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    metadata={null}
    model="gpt-4o"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="query2"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    notificationDuration={4.5}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolAIQuery
    id="chat1_query2"
    action="chatResponseGeneration"
    chatHistory="{{ chat1.messageHistory }}"
    chatInput="{{ chat1.lastMessage }}"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    metadata={null}
    model="gpt-4o"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</GlobalFunctions>
