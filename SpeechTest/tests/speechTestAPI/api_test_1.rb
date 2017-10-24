# Imports the Google Cloud client library
require "google/cloud/speech"

# Your Google Cloud Platform project ID
project_id = "speech-project-1508158639076"

# Instantiates a client
speech = Google::Cloud::Speech.new project: project_id

# The name of the audio file to transcribe
file_name = "/Users/alexandrelino/SpeechTest/tests/speechTestAPI/NET_10621_2017_10_14_14_04_04_[1].m4a"

# The audio file's encoding and sample rate
audio = speech.audio            file_name, 
                                encoding:     :linear16,
                                sample_rate:  16000,
                                language:     "pt-BR"

# Detects speech in the audio file
results = audio.recognize

# Each result represents a consecutive portion of the audio
results.each do |result|
  puts "Transcription: #{result.transcript}"
end