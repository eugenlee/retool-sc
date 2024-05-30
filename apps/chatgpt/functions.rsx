<GlobalFunctions>
  <RetoolAIQuery
    id="chat1_query1"
    action="chatResponseGeneration"
    chatHistory="{{ chat1.messageHistory }}"
    chatInput="{{ chat1.lastMessage }}"
    model="gpt-4"
    multimodalModel="gpt-4-vision-preview"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
  />
</GlobalFunctions>
