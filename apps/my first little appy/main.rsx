<App>
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Text
      id="text1"
      events={null}
      hidden={null}
      maintainSpaceWhenHidden={null}
      showInEditor={null}
      value="# Customers
"
      verticalAlign="center"
    />
    <TableLegacy
      id="table1"
      columnColors={{
        ordered: [{ id: "" }, { name: "" }, { email: "" }, { sales: "" }],
      }}
      columns={[
        "Title",
        "Description",
        "Sales",
        "id",
        "name",
        "email",
        "sales",
      ]}
      columnVisibility={{
        ordered: [
          { id: false },
          { name: true },
          { email: true },
          { sales: false },
          { Title: true },
          { Description: true },
          { Sales: true },
        ],
      }}
      customButtonName=""
      data={
        '[{\n  "id": 1,\n  "name": "Hanson Deck",\n  "email": "hanson@deck.com",\n  "sales": 37\n}, {\n  "id": 2,\n  "name": "Max Conversation",\n  "email": "Max@conversation.com",\n  "sales": 424\n}, {\n  "id": 3,\n  "name": "Jason Response",\n  "email": "jason@response.com",\n  "sales": 55\n}, {\n  "id": 4,\n  "name": "Sue Shei",\n  "email": "sueshei@example.com",\n  "sales": 550\n}, {\n  "id": 5,\n  "name": "Eric Widget",\n  "email": "eric@widget.org",\n  "sales": 243\n}]'
      }
      pageSize={5}
      selectedIndex=""
    />
  </Frame>
</App>
