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

defmodule GoogleApi.Compute.V1.Model.AutoscalersScopedListWarning do
  @moduledoc """
  [Output Only] Informational warning which replaces the list of autoscalers when the list is empty.

  ## Attributes

  - code (String.t): [Output Only] A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response. Defaults to: `null`.
    - Enum - one of [CLEANUP_FAILED, DEPRECATED_RESOURCE_USED, DEPRECATED_TYPE_USED, DISK_SIZE_LARGER_THAN_IMAGE_SIZE, EXPERIMENTAL_TYPE_USED, EXTERNAL_API_WARNING, FIELD_VALUE_OVERRIDEN, INJECTED_KERNELS_DEPRECATED, MISSING_TYPE_DEPENDENCY, NEXT_HOP_ADDRESS_NOT_ASSIGNED, NEXT_HOP_CANNOT_IP_FORWARD, NEXT_HOP_INSTANCE_NOT_FOUND, NEXT_HOP_INSTANCE_NOT_ON_NETWORK, NEXT_HOP_NOT_RUNNING, NOT_CRITICAL_ERROR, NO_RESULTS_ON_PAGE, REQUIRED_TOS_AGREEMENT, RESOURCE_IN_USE_BY_OTHER_RESOURCE_WARNING, RESOURCE_NOT_DELETED, SCHEMA_VALIDATION_IGNORED, SINGLE_INSTANCE_PROPERTY_TEMPLATE, UNDECLARED_PROPERTIES, UNREACHABLE]
  - data ([AcceleratorTypeAggregatedListWarningData]): [Output Only] Metadata about this warning in key: value format. For example: \&quot;data\&quot;: [ { \&quot;key\&quot;: \&quot;scope\&quot;, \&quot;value\&quot;: \&quot;zones/us-east1-d\&quot; } Defaults to: `null`.
  - message (String.t): [Output Only] A human-readable description of the warning code. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :code => any(),
          :data => list(GoogleApi.Compute.V1.Model.AcceleratorTypeAggregatedListWarningData.t()),
          :message => any()
        }

  field(:code)

  field(
    :data,
    as: GoogleApi.Compute.V1.Model.AcceleratorTypeAggregatedListWarningData,
    type: :list
  )

  field(:message)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.AutoscalersScopedListWarning do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.AutoscalersScopedListWarning.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.AutoscalersScopedListWarning do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
