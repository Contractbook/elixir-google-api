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

defmodule GoogleApi.Compute.V1.Model.RegionSetLabelsRequest do
  @moduledoc """


  ## Attributes

  - labelFingerprint (binary()): The fingerprint of the previous set of labels for this resource, used to detect conflicts. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update labels. You must always provide an up-to-date fingerprint hash in order to update or change labels. Make a get() request to the resource to get the latest fingerprint. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): The labels to set for this resource. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labelFingerprint => any(),
          :labels => map()
        }

  field(:labelFingerprint)
  field(:labels, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.RegionSetLabelsRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.RegionSetLabelsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.RegionSetLabelsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
