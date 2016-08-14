require Rails.root.join('lib/strategies/basic_auth_strategy')
Warden::Strategies.add(:basic_auth, BasicAuthStrategy)
