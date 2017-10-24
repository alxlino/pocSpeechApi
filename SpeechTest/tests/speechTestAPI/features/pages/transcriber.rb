require 'google/apis/speech_v1beta1'

module Transcriber
  def self.async_request
    speech = Google::Apis::SpeechV1beta1::SpeechService.new
    speech.key = 'AIzaSyDNHuPmkeV8f-vCJMNvtpTmxsKkeor01aQ'
    async_recognize_request_object = Google::Apis::SpeechV1beta1::AsyncRecognizeRequest.new

    async_recognize_request_object.config = { 
      encoding: "FLAC", 
      sample_rate: 16000, 
      language_code: "en-US"
    }

    async_recognize_request_object.audio = { 
      # content: path_to_audio
      uri:'gs://cloud-samples-tests/speech/brooklyn.flac'
    }

    speech.async_recognize_speech(async_recognize_request_object)
  end

  def self.get_operation(operation_name)
    speech = Google::Apis::SpeechV1beta1::SpeechService.new
    speech.key = 'AIzaSyDNHuPmkeV8f-vCJMNvtpTmxsKkeor01aQ'
    speech.get_operation(operation_name)
  end

end