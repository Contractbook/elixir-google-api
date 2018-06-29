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

defmodule GoogleApi.Compute.V1.Model.InstanceTemplate do
  @moduledoc """
  An Instance Template resource. (&#x3D;&#x3D; resource_for beta.instanceTemplates &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for v1.instanceTemplates &#x3D;&#x3D;)

  ## Attributes

  - creationTimestamp (String.t): [Output Only] The creation timestamp for this instance template in RFC3339 text format. Defaults to: `null`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to: `null`.
  - id (String.t): [Output Only] A unique identifier for this instance template. The server defines this identifier. Defaults to: `null`.
  - kind (String.t): [Output Only] The resource type, which is always compute#instanceTemplate for instance templates. Defaults to: `null`.
  - name (String.t): Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression &#x60;[a-z]([-a-z0-9]*[a-z0-9])?&#x60; which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to: `null`.
  - properties (InstanceProperties): The instance properties for this instance template. Defaults to: `null`.
  - selfLink (String.t): [Output Only] The URL for this instance template. The server defines this URL. Defaults to: `null`.
  - sourceInstance (String.t): The source instance used to create the template. You can provide this as a partial or full URL to the resource. For example, the following are valid values:   - https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance  - projects/project/zones/zone/instances/instance Defaults to: `null`.
  - sourceInstanceParams (SourceInstanceParams): The source instance params to use to create this instance template. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => any(),
          :description => any(),
          :id => any(),
          :kind => any(),
          :name => any(),
          :properties => GoogleApi.Compute.V1.Model.InstanceProperties.t(),
          :selfLink => any(),
          :sourceInstance => any(),
          :sourceInstanceParams => GoogleApi.Compute.V1.Model.SourceInstanceParams.t()
        }

  field(:creationTimestamp)
  field(:description)
  field(:id)
  field(:kind)
  field(:name)
  field(:properties, as: GoogleApi.Compute.V1.Model.InstanceProperties)
  field(:selfLink)
  field(:sourceInstance)
  field(:sourceInstanceParams, as: GoogleApi.Compute.V1.Model.SourceInstanceParams)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstanceTemplate do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceTemplate.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstanceTemplate do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
