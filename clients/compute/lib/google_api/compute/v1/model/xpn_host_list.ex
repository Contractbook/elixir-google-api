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

defmodule GoogleApi.Compute.V1.Model.XpnHostList do
  @moduledoc """


  ## Attributes

  - id (String.t): [Output Only] Unique identifier for the resource; defined by the server. Defaults to: `null`.
  - items ([Project]): [Output Only] A list of shared VPC host project URLs. Defaults to: `null`.
  - kind (String.t): [Output Only] Type of resource. Always compute#xpnHostList for lists of shared VPC hosts. Defaults to: `null`.
  - nextPageToken (String.t): [Output Only] This token allows you to get the next page of results for list requests. If the number of results is larger than maxResults, use the nextPageToken as a value for the query parameter pageToken in the next list request. Subsequent list requests will have their own nextPageToken to continue paging through the results. Defaults to: `null`.
  - selfLink (String.t): [Output Only] Server-defined URL for this resource. Defaults to: `null`.
  - warning (AcceleratorTypeAggregatedListWarning):  Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => any(),
          :items => list(GoogleApi.Compute.V1.Model.Project.t()),
          :kind => any(),
          :nextPageToken => any(),
          :selfLink => any(),
          :warning => GoogleApi.Compute.V1.Model.AcceleratorTypeAggregatedListWarning.t()
        }

  field(:id)
  field(:items, as: GoogleApi.Compute.V1.Model.Project, type: :list)
  field(:kind)
  field(:nextPageToken)
  field(:selfLink)
  field(:warning, as: GoogleApi.Compute.V1.Model.AcceleratorTypeAggregatedListWarning)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.XpnHostList do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.XpnHostList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.XpnHostList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
