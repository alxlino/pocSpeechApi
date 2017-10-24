# [START speech_async_recognize_gcs]
  project_id   = "speech-project-1508158639076"
  storage_path = "gs://cloud-samples-tests/speech/brooklyn.flac"

  require "google/cloud/speech"
  
    speech = Google::Cloud::Speech.new project: project_id
    audio  = speech.audio storage_path, encoding:    "FLAC",
                                        sample_rate: 16000,
                                        language:    "en-US"
  
    operation = audio.process
  
    puts "Operation started"
  
    operation.wait_until_done!
  
    results = operation.results
  
    results.each do |result|
      puts "Transcription: #{result.transcript}"
    end