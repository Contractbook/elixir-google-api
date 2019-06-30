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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyContentResponse do
  @moduledoc """
  Results of de-identifying a ContentItem.

  ## Attributes

  *   `item` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentItem.t`, *default:* `nil`) - The de-identified item.
  *   `overview` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationOverview.t`, *default:* `nil`) - An overview of the changes that were made on the `item`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :item => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentItem.t(),
          :overview => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationOverview.t()
        }

  field(:item, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ContentItem)
  field(:overview, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransformationOverview)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyContentResponse do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyContentResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeidentifyContentResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
