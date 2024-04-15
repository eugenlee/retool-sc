<App>
  <Include src="./functions.rsx" />
  <Include src="./header.rsx" />
  <Frame id="$main" padding="8px 12px" sticky={false} type="main">
    <KeyValue
      id="keyValue1"
      data={
        "{\n  id: 0,\n  firstName: 'Chic',\n  lastName: 'Footitt',\n  email: 'chic.footitt@yahoo.com',\n  website: 'https://chic.footitt.com',\n  text: 'Nulla sit amet nibh at augue facilisis viverra quis id dui. Nullam mattis ultricies metus. Donec eros lorem, egestas vitae aliquam quis, rutrum a mauris',\n  role: 'Viewer',\n  teams: ['Workplace', 'Infrastructure'],\n  enabled: true,\n  createdAt: '2023-01-16T23:40:20.385Z',\n  renewableTimes: \"null\",\n  state: \"SUBSCRIPTION\"\n}"
      }
      editIcon="bold/interface-edit-pencil"
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    >
      <Property
        id="id"
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="false"
        label="ID"
      />
      <Property
        id="firstName"
        format="string"
        formatOptions={{}}
        hidden="false"
        label="First name"
      />
      <Property
        id="enabled"
        format="boolean"
        formatOptions={{}}
        hidden="false"
        label="Enabled"
      />
      <Property
        id="lastName"
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Last name"
      />
      <Property
        id="text"
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Text"
      />
      <Property
        id="renewableTimes"
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Renewable times"
      />
      <Property
        id="teams"
        format="tags"
        formatOptions={{ automaticColors: true }}
        hidden="false"
        label="Teams"
      />
      <Property
        id="state"
        format="tag"
        formatOptions={{
          automaticColors: false,
          color:
            "{{ !item ? undefined : item === 'SUBSCRIPTION' ? '#059669' : '#FDE68A' }}",
        }}
        hidden="false"
        label="State"
      />
    </KeyValue>
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getFromRetoolDatabase.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      groupByColumns={{}}
      primaryKeyColumnId="be4d8"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="3fac6"
        alignment="left"
        editable="true"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        label="Status"
        optionList={{
          manualData: [
            {
              ordered: [
                { value: "Option 1" },
                { fallbackText: "" },
                { color: "rgba(243, 4, 4, 1)" },
              ],
            },
            { ordered: [{ value: "Option 2" }, { fallbackText: '"1"' }] },
            { ordered: [{ value: "Option 3" }, { fallbackText: '"3"' }] },
            { ordered: [{ value: "Option 4" }, { fallbackText: '"4"' }] },
            { ordered: [{ value: "Option 5" }, { fallbackText: '"2"' }] },
          ],
          mode: "manual",
        }}
        placeholder="Select option"
        position="center"
        referenceId="status"
        size={53.6875}
      />
      <Column
        id="be4d8"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={31.546875}
      />
      <Column
        id="06039"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="account_number"
        label="Account number"
        placeholder="Enter value"
        position="center"
        size={112.609375}
      />
      <Column
        id="9c4eb"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="company"
        label="Company"
        placeholder="Enter value"
        position="center"
        size={142.4375}
      />
      <Column
        id="7a80c"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="transaction_date"
        label="Transaction date"
        placeholder="Enter value"
        position="center"
        size={152.921875}
      />
      <Column
        id="437a2"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="payment_type"
        label="Payment type"
        placeholder="Select option"
        position="center"
        size={96}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="7e2c7"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="plan"
        label="Plan"
        placeholder="Select option"
        position="center"
        size={90.9375}
        valueOverride="{{ _.startCase(item) }}"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="selectRow"
        method="run"
        params={{ ordered: [] }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
    <Form
      id="form1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      initialData=""
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text id="formTitle1" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <ListViewBeta
          id="listView1"
          _primaryKeys="{{ item.id }}"
          data="{{ getFromRetoolDatabase.data }}"
          itemWidth="200px"
          margin="0"
          numColumns={3}
          padding="0"
        >
          <Container
            id="container1"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            padding="12px"
            showBody={true}
            showHeader={true}
          >
            <Header>
              <Text
                id="containerTitle1"
                value="#### {{ item.id }}"
                verticalAlign="center"
              />
            </Header>
            <View id="26258" viewKey="View 1">
              <TextArea
                id="textArea1"
                autoResize={true}
                label="{{ item.text }}"
                labelPosition="top"
                minLines={2}
                placeholder="Enter value"
                value="{{ item.company }}"
              >
                <Event
                  event="change"
                  method="run"
                  params={{
                    ordered: [
                      {
                        src: "updateRepeatableQuery.trigger({\n  additionalScope: {\n    id: item.id,\n    company: textArea1[i].value\n  }\n})",
                      },
                    ],
                  }}
                  pluginId=""
                  type="script"
                  waitMs="0"
                  waitType="debounce"
                />
              </TextArea>
            </View>
          </Container>
        </ListViewBeta>
      </Body>
      <Footer>
        <Button
          id="formButton1"
          submit={true}
          submitTargetId="form1"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateRepeatableQuery"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="form1SubmitHandler"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Frame>
</App>
