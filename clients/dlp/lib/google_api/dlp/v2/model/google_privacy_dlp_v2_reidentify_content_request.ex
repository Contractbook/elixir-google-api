# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ReidentifyContentRequest do
  @moduledoc """
  Request to re-identify an item.

  ## Attributes

  - inspectConfig (GooglePrivacyDlpV2InspectConfig): Configuration for the inspector. Defaults to: `null`.
  - inspectTemplateName (String.t): Optional template to use. Any configuration directly specified in &#x60;inspect_config&#x60; will override those set in the template. Singular fields that are set in this request will replace their corresponding fields in the template. Repeated fields are appended. Singular sub-messages and groups are recursively merged. Defaults to: `null`.
  - item (GooglePrivacyDlpV2ContentItem): The item to re-identify. Will be treated as text. Defaults to: `null`.
  - reidentifyConfig (GooglePrivacyDlpV2DeidentifyConfig): Configuration for the re-identification of the content item. This field shares the same proto message type that is used for de-identification, however its usage here is for the reversal of the previous de-identification. Re-identification is performed by examining the transformations used to de-identify the items and executing the reverse. This requires that only reversible transformations be provided here. The reversible transformations are:   - &#x60;CryptoReplaceFfxFpeConfig&#x60; Defaults to: `null`.
  - reidentifyTemplateName (String.t): Optional template to use. References an instance of &#x60;DeidentifyTemplate&#x60;. Any configuration directly specified in &#x60;reidentify_config&#x60; or &#x60;inspect_config&#x60; will override those set in the template. Singular fields that are set in this request will replace their corresponding fields in the template. Repeated fields are appended. Singular sub-messages and groups are recursively merged. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inspectConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig.t(),
          :inspectTemplateName => any(),
          :item => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentItem.t(),
          :reidentifyConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyConfig.t(),
          :reidentifyTemplateName => any()
        }

  field(:inspectConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InspectConfig)
  field(:inspectTemplateName)
  field(:item, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentItem)
  field(:reidentifyConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyConfig)
  field(:reidentifyTemplateName)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ReidentifyContentRequest do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ReidentifyContentRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ReidentifyContentRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
