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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues do
  @moduledoc """
  A tuple of values for the quasi-identifier columns.

  ## Attributes

  *   `estimatedProbability` (*type:* `float()`, *default:* `nil`) - The estimated probability that a given individual sharing these
      quasi-identifier values is in the dataset. This value, typically called
      δ, is the ratio between the number of records in the dataset with these
      quasi-identifier values, and the total number of individuals (inside
      *and* outside the dataset) with these quasi-identifier values.
      For example, if there are 15 individuals in the dataset who share the
      same quasi-identifier values, and an estimated 100 people in the entire
      population with these values, then δ is 0.15.
  *   `quasiIdsValues` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Value.t)`, *default:* `nil`) - The quasi-identifier values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :estimatedProbability => float(),
          :quasiIdsValues => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Value.t())
        }

  field(:estimatedProbability)
  field(:quasiIdsValues, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Value, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
