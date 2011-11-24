xml.instruct!
xml.Response do
  xml.Say "Good bye."
  xml.Dial "1-216-701-6281"
  xml.Record(:transcribe => "true", :transcribeCallback => "/get_recording")
end