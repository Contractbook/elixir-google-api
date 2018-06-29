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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2QuasiIdentifierField do
  @moduledoc """
  A quasi-identifier column has a custom_tag, used to know which column in the data corresponds to which column in the statistical model.

  ## Attributes

  - customTag (String.t):  Defaults to: `null`.
  - field (GooglePrivacyDlpV2FieldId):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customTag => any(),
          :field => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t()
        }

  field(:customTag)
  field(:field, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2QuasiIdentifierField do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2QuasiIdentifierField.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2QuasiIdentifierField do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
