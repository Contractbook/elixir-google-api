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

defmodule GoogleApi.Compute.V1.Model.VpnTunnel do
  @moduledoc """
  VPN tunnel resource. (&#x3D;&#x3D; resource_for beta.vpnTunnels &#x3D;&#x3D;) (&#x3D;&#x3D; resource_for v1.vpnTunnels &#x3D;&#x3D;)

  ## Attributes

  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to: `null`.
  - detailedStatus (String.t): [Output Only] Detailed status message for the VPN tunnel. Defaults to: `null`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to: `null`.
  - ikeVersion (integer()): IKE protocol version to use when establishing the VPN tunnel with peer VPN gateway. Acceptable IKE versions are 1 or 2. Default version is 2. Defaults to: `null`.
  - kind (String.t): [Output Only] Type of resource. Always compute#vpnTunnel for VPN tunnels. Defaults to: `null`.
  - localTrafficSelector ([String.t]): Local traffic selector to use when establishing the VPN tunnel with peer VPN gateway. The value should be a CIDR formatted string, for example: 192.168.0.0/16. The ranges should be disjoint. Only IPv4 is supported. Defaults to: `null`.
  - name (String.t): Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression &#x60;[a-z]([-a-z0-9]*[a-z0-9])?&#x60; which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to: `null`.
  - peerIp (String.t): IP address of the peer VPN gateway. Only IPv4 is supported. Defaults to: `null`.
  - region (String.t): [Output Only] URL of the region where the VPN tunnel resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body. Defaults to: `null`.
  - remoteTrafficSelector ([String.t]): Remote traffic selectors to use when establishing the VPN tunnel with peer VPN gateway. The value should be a CIDR formatted string, for example: 192.168.0.0/16. The ranges should be disjoint. Only IPv4 is supported. Defaults to: `null`.
  - router (String.t): URL of router resource to be used for dynamic routing. Defaults to: `null`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to: `null`.
  - sharedSecret (String.t): Shared secret used to set the secure session between the Cloud VPN gateway and the peer VPN gateway. Defaults to: `null`.
  - sharedSecretHash (String.t): Hash of the shared secret. Defaults to: `null`.
  - status (String.t): [Output Only] The status of the VPN tunnel. Defaults to: `null`.
    - Enum - one of [ALLOCATING_RESOURCES, AUTHORIZATION_ERROR, DEPROVISIONING, ESTABLISHED, FAILED, FIRST_HANDSHAKE, NEGOTIATION_FAILURE, NETWORK_ERROR, NO_INCOMING_PACKETS, PROVISIONING, REJECTED, WAITING_FOR_FULL_CONFIG]
  - targetVpnGateway (String.t): URL of the Target VPN gateway with which this VPN tunnel is associated. Provided by the client when the VPN tunnel is created. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => any(),
          :description => any(),
          :detailedStatus => any(),
          :id => any(),
          :ikeVersion => any(),
          :kind => any(),
          :localTrafficSelector => list(any()),
          :name => any(),
          :peerIp => any(),
          :region => any(),
          :remoteTrafficSelector => list(any()),
          :router => any(),
          :selfLink => any(),
          :sharedSecret => any(),
          :sharedSecretHash => any(),
          :status => any(),
          :targetVpnGateway => any()
        }

  field(:creationTimestamp)
  field(:description)
  field(:detailedStatus)
  field(:id)
  field(:ikeVersion)
  field(:kind)
  field(:localTrafficSelector, type: :list)
  field(:name)
  field(:peerIp)
  field(:region)
  field(:remoteTrafficSelector, type: :list)
  field(:router)
  field(:selfLink)
  field(:sharedSecret)
  field(:sharedSecretHash)
  field(:status)
  field(:targetVpnGateway)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.VpnTunnel do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.VpnTunnel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.VpnTunnel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
