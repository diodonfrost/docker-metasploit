# Metasploit install

control 'install-01' do
  impact 1.0
  title 'Metasploit install'
  desc 'Metasploit should be installed'
  describe file('/opt/metasploit-framework/msfconsole') do
    it { should exist }
    it { should be_executable }
  end
end

control 'install-02' do
  impact 1.0
  title 'Metasploit symlink'
  desc 'Metasploit symlink should be present in /bin'
  describe file('/bin//msfconsole') do
    it { should exist }
    it { should be_executable }
    it { should be_symlink }
  end
end
