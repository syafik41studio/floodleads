xml.instruct!
xml.Response do
  xml.Say "Good bye."
  xml.Dial(:record => "true") do
    "1-216-701-6281"
  end
  xml.Record
end