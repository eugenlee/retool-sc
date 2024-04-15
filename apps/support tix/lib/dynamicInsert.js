const time = moment().toString();

const result = dynamicInsert.trigger({
  additionalScope: {
    documentId: 'IAcsldfkjsld',
    recordUpdates: {
      hello: 'world',
      key: 'value',
      lastUpdatedAt: time,
    }
  }
})
