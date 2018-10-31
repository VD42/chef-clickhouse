describe file('/etc/clickhouse-server/clickhouse-server-test/conf.d/compression.xml') do
  it { should exist }
  it { should be_file }
  it { should be_mode 0o640 }
  it { should be_owned_by 'clickhouse' }
  it { should be_grouped_into 'clickhouse' }
  its(:content) { should match(<<-CONF
  <yandex>
    <compression>
        <case>
          <!- - Conditions. All must be satisfied. Some conditions may be omitted. - ->
          <min_part_size>10000000000</min_part_size>        <!- - Min part size in bytes. - ->
          <min_part_size_ratio>0.01</min_part_size_ratio>   <!- - Min size of part relative to whole table size. - ->

          <!- - What compression method to use. - ->
          <method>zstd</method>
        </case>
    </compression>
  </yandex>
  CONF
  ) }
end