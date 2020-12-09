json.extract! provider, :id, :provider_name, :provider_email, :tax_id, :provider_licence, :provider_address, :NPI, :phone, :created_at, :updated_at
json.url provider_url(provider, format: :json)
