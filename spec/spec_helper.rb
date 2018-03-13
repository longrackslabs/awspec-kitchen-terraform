require 'awspec'
require 'aws-sdk'

Awsecrets.load(secrets_path: File.expand_path('./secrets.yml', File.dirname(__FILE__)))

# Return only a single running instance with the Name tag specified
class EC2Helper
    def self.GetIdFromName(name)
        instances = Array.new
        # Filter the ec2 instances for name and state pending or running
        ec2 = Aws::EC2::Resource.new(region: ENV['AWS_DEFAULT_REGION'])
        ec2.instances({filters: [
            {name: 'tag:Name', values: [name]},
            {name: 'instance-state-name', values: [ 'pending', 'running']}
        ]}).each do |i|
            instances.push(i.id)
        end

        # If we found a single instance return it, otherwise throw an error.
        if instances.count == 1 then
            puts 'Found Running EC2 with Name: ' + name + ' ID: ' + instances[0]
            return instances[0]
        elsif instances.count == 0 then
            STDERR.puts 'Error: ' + name + ' Instance not found'
        else
            STDERR.puts 'Error: ' + name + ' more than one running instance exists with that Name'
        end
    end
end
