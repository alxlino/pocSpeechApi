
require "google/cloud/speech"

project_id = "speech-project-1508158639076"

speech = Google::Cloud::Speech.new project: project_id


audio = speech.audio "gs://cloud-samples-tests/speech/brooklyn.flac'",encoding: "FLAC",language: "en-US",sample_rate: 16000

results = audio.recognize
result = results.first
result.transcript #=> "how old is the Brooklyn Bridge"
result.confidence #=> 0.9826789498329163