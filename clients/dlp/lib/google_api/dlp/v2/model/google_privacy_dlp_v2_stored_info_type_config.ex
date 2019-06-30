# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StoredInfoTypeConfig do
  @moduledoc """
  Configuration for a StoredInfoType.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the StoredInfoType (max 256 characters).
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name of the StoredInfoType (max 256 characters).
  *   `largeCustomDictionary` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LargeCustomDictionaryConfig.t`, *default:* `nil`) - StoredInfoType where findings are defined by a dictionary of phrases.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t(),
          :displayName => String.t(),
          :largeCustomDictionary =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LargeCustomDictionaryConfig.t()
        }

  field(:description)
  field(:displayName)

  field(
    :largeCustomDictionary,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2LargeCustomDictionaryConfig
  )
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StoredInfoTypeConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StoredInfoTypeConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StoredInfoTypeConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
