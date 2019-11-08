Fabricator(:company) do
  name            "Test Company"
  logo                  "Logo"
  layout_color_dark     "#CCCCC"
  layout_color_light    "#FFFFFF"
  address               "Street Name 123\nCol. Del Valle\n06050"
  rfc                   "MIGO990101NT3"
  phone                 "5512345678"
  url                   "test-company.com"
  email                 "ceo@email.com"
  banking_data          "Banamex\nCLABE: 999394958"
  privacy_notification  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non enim a sapien lobortis aliquam ut id nulla. Nam dictum consequat quam, id mollis lectus consectetur ac. Mauris dignissim quis quam ut consectetur. "
  status
end
