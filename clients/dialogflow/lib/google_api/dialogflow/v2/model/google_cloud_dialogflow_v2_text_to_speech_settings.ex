# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2TextToSpeechSettings do
  @moduledoc """
  Instructs the speech synthesizer on how to generate the output audio content.

  ## Attributes

  *   `enableTextToSpeech` (*type:* `boolean()`, *default:* `nil`) - Optional. Indicates whether text to speech is enabled. Even when this field is false, other settings in this proto are still retained.
  *   `outputAudioEncoding` (*type:* `String.t`, *default:* `nil`) - Required. Audio encoding of the synthesized audio content.
  *   `sampleRateHertz` (*type:* `integer()`, *default:* `nil`) - Optional. The synthesis sample rate (in hertz) for this audio. If not provided, then the synthesizer will use the default sample rate based on the audio encoding. If this is different from the voice's natural sample rate, then the synthesizer will honor this request by converting to the desired sample rate (which might result in worse audio quality).
  *   `synthesizeSpeechConfigs` (*type:* `%{optional(String.t) => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SynthesizeSpeechConfig.t}`, *default:* `nil`) - Optional. Configuration of how speech should be synthesized, mapping from language (https://cloud.google.com/dialogflow/docs/reference/language) to SynthesizeSpeechConfig.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enableTextToSpeech => boolean() | nil,
          :outputAudioEncoding => String.t() | nil,
          :sampleRateHertz => integer() | nil,
          :synthesizeSpeechConfigs =>
            %{
              optional(String.t()) =>
                GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SynthesizeSpeechConfig.t()
            }
            | nil
        }

  field(:enableTextToSpeech)
  field(:outputAudioEncoding)
  field(:sampleRateHertz)

  field(:synthesizeSpeechConfigs,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SynthesizeSpeechConfig,
    type: :map
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2TextToSpeechSettings do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2TextToSpeechSettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2TextToSpeechSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end