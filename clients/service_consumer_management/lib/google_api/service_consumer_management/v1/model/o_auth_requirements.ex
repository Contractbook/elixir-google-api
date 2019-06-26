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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.OAuthRequirements do
  @moduledoc """
  OAuth scopes are a way to define data and permissions on data. For example,
  there are scopes defined for "Read-only access to Google Calendar" and
  "Access to Cloud Platform". Users can consent to a scope for an application,
  giving it permission to access that data on their behalf.

  OAuth scope specifications should be fairly coarse grained; a user will need
  to see and understand the text description of what your scope means.

  In most cases: use one or at most two OAuth scopes for an entire family of
  products. If your product has multiple APIs, you should probably be sharing
  the OAuth scope across all of those APIs.

  When you need finer grained OAuth consent screens: talk with your product
  management about how developers will use them in practice.

  Please note that even though each of the canonical scopes is enough for a
  request to be accepted and passed to the backend, a request can still fail
  due to the backend requiring additional scopes or permissions.

  ## Attributes

  *   `canonicalScopes` (*type:* `String.t`, *default:* `nil`) - The list of publicly documented OAuth scopes that are allowed access. An
      OAuth token containing any of these scopes will be accepted.

      Example:

           canonical_scopes: https://www.googleapis.com/auth/calendar,
                             https://www.googleapis.com/auth/calendar.read
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canonicalScopes => String.t()
        }

  field(:canonicalScopes)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.OAuthRequirements do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.OAuthRequirements.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.OAuthRequirements do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
