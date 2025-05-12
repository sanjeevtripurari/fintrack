
# AWS instance

## Added all variables
```
.\terraform\fintrack-modules
├── main.tf
├── modules
│   └── fintrack
│       ├── main.tf
│       ├── output.tf
│       └── variables.tf
├── output.tf
├── providers.tf
├── terraform.tfvars
└── variables.tf

# terraform apply
module.fintrack.aws_key_pair.this: Creating...
module.fintrack.aws_s3_bucket.this: Creating...
module.fintrack.aws_security_group.this: Creating...
module.fintrack.aws_key_pair.this: Creation complete after 1s [id=fintrack-key]
module.fintrack.aws_security_group.this: Creation complete after 5s [id=sg-0c9fccdf40b2e23e2]
module.fintrack.aws_instance.this: Creating...
module.fintrack.aws_instance.this: Still creating... [10s elapsed]
module.fintrack.aws_instance.this: Creation complete after 16s [id=i-003d9d509bc3d5bf9]
╷
│ Error: creating S3 Bucket (fintrack-bucket): BucketAlreadyExists (it required to create bucket first)

# terraform destroy
module.fintrack.aws_instance.this: Destroying... [id=i-003d9d509bc3d5bf9]
module.fintrack.aws_instance.this: Still destroying... [id=i-003d9d509bc3d5bf9, 10s elapsed]
module.fintrack.aws_instance.this: Still destroying... [id=i-003d9d509bc3d5bf9, 20s elapsed]
module.fintrack.aws_instance.this: Still destroying... [id=i-003d9d509bc3d5bf9, 30s elapsed]
module.fintrack.aws_instance.this: Destruction complete after 32s
module.fintrack.aws_key_pair.this: Destroying... [id=fintrack-key]
module.fintrack.aws_security_group.this: Destroying... [id=sg-0c9fccdf40b2e23e2]
module.fintrack.aws_key_pair.this: Destruction complete after 1s
module.fintrack.aws_security_group.this: Destruction complete after 2s

```

aws ec2 describe-instances
```
{
    "Reservations": [
        {
            "Groups": [],
            "Instances": [
                {
                    "AmiLaunchIndex": 0,
                    "ImageId": "ami-084568db4383264d4",
                    "InstanceId": "i-087edaf0203a0642d",
                    "InstanceType": "t2.micro",
                    "KeyName": "fintrack-key",
                    "LaunchTime": "2025-05-12T15:44:01+00:00",
                    "Monitoring": {
                        "State": "disabled"
                    },
                    "Placement": {
                        "AvailabilityZone": "us-east-1b",
                        "GroupName": "",
                        "Tenancy": "default"
                    },
                    "PrivateDnsName": "ip-172-31-94-25.ec2.internal",
                    "PrivateIpAddress": "172.31.94.25",
                    "ProductCodes": [],
                    "PublicDnsName": "ec2-3-88-249-9.compute-1.amazonaws.com",
                    "PublicIpAddress": "3.88.249.9",
                    "State": {
                        "Code": 16,
                        "Name": "running"
                    },
                    "StateTransitionReason": "",
                    "SubnetId": "subnet-0de930face9a71c94",
                    "VpcId": "vpc-0472562a327f51a9f",
                    "Architecture": "x86_64",
                    "BlockDeviceMappings": [
                        {
                            "DeviceName": "/dev/sda1",
                            "Ebs": {
                                "AttachTime": "2025-05-12T15:44:01+00:00",
                                "DeleteOnTermination": true,
                                "Status": "attached",
                                "VolumeId": "vol-09cee139085159087"
                            }
                        }
                    ],
                    "ClientToken": "terraform-20250512154358870500000001",
                    "EbsOptimized": false,
                    "EnaSupport": true,
                    "Hypervisor": "xen",
                    "NetworkInterfaces": [
                        {
                            "Association": {
                                "IpOwnerId": "amazon",
                                "PublicDnsName": "ec2-3-88-249-9.compute-1.amazonaws.com",
                                "PublicIp": "3.88.249.9"
                            },
                            "Attachment": {
                                "AttachTime": "2025-05-12T15:44:00+00:00",
                                "AttachmentId": "eni-attach-01949691fe115fc82",
                                "DeleteOnTermination": true,
                                "DeviceIndex": 0,
                                "Status": "attached",
                                "NetworkCardIndex": 0
                            },
                            "Description": "",
                            "Groups": [
                                {
                                    "GroupName": "fintrack-sg",
                                    "GroupId": "sg-0efabd4385a45296a"
                                }
                            ],
                            "Ipv6Addresses": [],
                            "MacAddress": "12:15:f5:bc:5d:55",
                            "NetworkInterfaceId": "eni-0889723c8966f6d3d",
                            "OwnerId": "054037116517",
                            "PrivateDnsName": "ip-172-31-94-25.ec2.internal",
                            "PrivateIpAddress": "172.31.94.25",
                            "PrivateIpAddresses": [
                                {
                                    "Association": {
                                        "IpOwnerId": "amazon",
                                        "PublicDnsName": "ec2-3-88-249-9.compute-1.amazonaws.com",
                                        "PublicIp": "3.88.249.9"
                                    },
                                    "Primary": true,
                                    "PrivateDnsName": "ip-172-31-94-25.ec2.internal",
                                    "PrivateIpAddress": "172.31.94.25"
                                }
                            ],
                            "SourceDestCheck": true,
                            "Status": "in-use",
                            "SubnetId": "subnet-0de930face9a71c94",
                            "VpcId": "vpc-0472562a327f51a9f",
                            "InterfaceType": "interface"
                        }
                    ],
                    "RootDeviceName": "/dev/sda1",
                    "RootDeviceType": "ebs",
                    "SecurityGroups": [
                        {
                            "GroupName": "fintrack-sg",
                            "GroupId": "sg-0efabd4385a45296a"
                        }
                    ],
                    "SourceDestCheck": true,
                    "Tags": [
                        {
                            "Key": "Name",
                            "Value": "FinTrackApp"
                        }
                    ],
                    "VirtualizationType": "hvm",
                    "CpuOptions": {
                        "CoreCount": 1,
                        "ThreadsPerCore": 1
                    },
                    "CapacityReservationSpecification": {
                        "CapacityReservationPreference": "open"
                    },
                    "HibernationOptions": {
                        "Configured": false
                    },
                    "MetadataOptions": {
                        "State": "applied",
                        "HttpTokens": "required",
                        "HttpPutResponseHopLimit": 2,
                        "HttpEndpoint": "enabled",
                        "HttpProtocolIpv6": "disabled",
                        "InstanceMetadataTags": "disabled"
                    },
                    "EnclaveOptions": {
                        "Enabled": false
                    },
                    "BootMode": "uefi-preferred",
                    "PlatformDetails": "Linux/UNIX",
                    "UsageOperation": "RunInstances",
                    "UsageOperationUpdateTime": "2025-05-12T15:44:01+00:00",
                    "PrivateDnsNameOptions": {
                        "HostnameType": "ip-name",
                        "EnableResourceNameDnsARecord": false,
                        "EnableResourceNameDnsAAAARecord": false
                    },
                    "MaintenanceOptions": {
                        "AutoRecovery": "default"
                    },
                    "CurrentInstanceBootMode": "legacy-bios"
                }
            ],
            "OwnerId": "054037116517",
            "ReservationId": "r-0b163243304b6e5b8"
        }
    ]
}

```
aws s3api list-buckets 
```
{
    "Buckets": [
        {
            "Name": "fintrack-bucket",
            "CreationDate": "2025-05-12T16:01:30+00:00"
        }
    ],
    "Owner": {
        "DisplayName": "san1000100",
        "ID": "95a692b223889444533b94ec5b82587e1047c785c39843051d3415502601b355"
    }
}

```


# Personal Finance Tracker

A simple Flask-based personal finance tracking application with a clean UI and SQLite database support.

## Features

- Dashboard with income/expense summary
- Add new transactions
- Transaction history report
- System monitoring
- Clean, responsive UI using Bootstrap 5
- System information display (version, IP, hostname, container status)
- Comprehensive logging
- Unit and integration tests  



![Fintrack App](docs/fintrack.png "Fintrack - Personal Finance Tracker App")


## Setup

1. Create a virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Run the application in development mode:
```bash
python app.py
```

4. Open your browser and navigate to `http://localhost:5001`

## Testing

The application includes both unit and integration tests. To run the tests:

1. First, install the package in development mode:
```bash
pip install -e .
```

2. Then run the tests using pytest:
```bash
# Run all tests
pytest

# Run tests with coverage report
pytest --cov=app tests/

# Run specific test file
pytest tests/test_models.py
pytest tests/test_routes.py

# Run tests with detailed output
pytest -v

# Run tests and show print statements
pytest -s
```

### Test Categories

1. **Unit Tests** (`tests/test_models.py`):
   - Transaction model creation
   - Income transaction validation
   - Expense transaction validation
   - Date handling

2. **Integration Tests** (`tests/test_routes.py`):
   - Dashboard route
   - Add transaction form
   - Income transaction submission
   - Expense transaction submission
   - Report generation
   - System info display
   - Transaction calculations

### Test Database

Tests use a separate SQLite database (`test.db`) to avoid affecting the production database. The test database is automatically created and destroyed for each test session.

## Production Deployment

For production deployment, use either Uvicorn or Gunicorn:

### Using Uvicorn:
```bash
uvicorn app:app --host 0.0.0.0 --port 5001 --workers 4
```

### Using Gunicorn:
```bash
gunicorn app:app --bind 0.0.0.0:5001 --workers 4
```

## Usage

- **Dashboard**: View summary of your finances and recent transactions
- **Add Transaction**: Add new income or expenses
- **Report**: View detailed transaction history
- **System Info**: Monitor system resources

## Database

The application uses SQLite for data storage. The database file (`transactions.db`) will be automatically created in the application directory when you first run the app.

## Logging

Application logs are stored in the `logs` directory:
- Main log file: `logs/fintrack.log`
- Rotating log files (max 10MB each, 10 backups)
- Includes timestamp, log level, and source location

## Security Note

This is a development version. For production use:
1. Change the `SECRET_KEY` in `app.py`
2. Use a proper production-grade WSGI server (as shown above)
3. Implement proper user authentication
4. Use environment variables for sensitive configuration
5. Consider using a more robust database like PostgreSQL 