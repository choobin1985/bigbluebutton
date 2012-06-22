package org.bigbluebutton.core.controllers.commands
{
    import org.bigbluebutton.core.Logger;
    import org.bigbluebutton.core.services.imp.UsersService;
    import org.robotlegs.mvcs.Command;
    
    public class GetAllUsersCommand extends Command
    {
        [Inject]
        public var service:UsersService
        
        [Inject]
        public var logger:Logger;
        
        override public function execute():void
        {
            logger.debug("Get all users command");
            service.getAllUsers();
        }
    }
}