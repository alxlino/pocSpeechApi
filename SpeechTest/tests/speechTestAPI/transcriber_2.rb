require 'google/apis/speech_v1beta1'

module Transcriber
  def self.async_request
    speech = Google::Apis::SpeechV1beta1::SpeechService.new
    speech.key = 'AIzaSyDNHuPmkeV8f-vCJMNvtpTmxsKkeor01aQ'
    async_recognize_request_object = Google::Apis::SpeechV1beta1::AsyncRecognizeRequest.new

    async_recognize_request_object.config = { 
      encoding: "FLAC", 
      sample_rate: 16000, 
      language_code: "pt-BR"
    }

    async_recognize_request_object.audio = { 
      uri: 'gs://rep-speech-proj/audio_file_4.flac'
     # content:'/Users/alexandrelino/SpeechTest/tests/speechTestAPI/audio_file_2.flac'
     # uri:'gs://cloud-samples-tests/speech/brooklyn.flac'
     # uri: '//storage.googleapis.com/rep-speech-proj/audio_file_2.flac' #'gs://rep-speech-proj/audio_file_2.flac'
    }

    speech.async_recognize_speech(async_recognize_request_object)
  end

  def self.get_operation(operation_name)
    speech = Google::Apis::SpeechV1beta1::SpeechService.new
    speech.key = 'AIzaSyDNHuPmkeV8f-vCJMNvtpTmxsKkeor01aQ'
    speech.get_operation(operation_name)
  end

end